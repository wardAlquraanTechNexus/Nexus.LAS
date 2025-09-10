using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories.RegisterFileRepositories
{
    public class RegisterFileRepo : GenericRepo<RegisterFile>, IRegisterFileRepo
    {
        private readonly NexusLASDbContext _context;

        public RegisterFileRepo(NexusLASDbContext context) : base(context)
        {
            _context = context;
        }

        public async Task<List<RegisterFile>> GetByIds(string idc, int idn)
        {
            return await _dbSet.Where(x=>x.RegistersIdc == idc && x.RegistersIdn == idn).OrderByDescending(x=>x.Id).ToListAsync();
        }
        public async Task<RegisterFile?> GetLastByIds(string idc, int idn)
        {
            return await _dbSet.Where(x=>x.RegistersIdc == idc && x.RegistersIdn == idn).OrderByDescending(x=>x.Id).FirstOrDefaultAsync();
        }

        public async Task<int> CreateAsync(RegisterFile entity, IFormFile file)
        {
            byte[] bytes;

            using (var memoryStream = new MemoryStream())
            {
                await file.CopyToAsync(memoryStream);
                bytes = memoryStream.ToArray();
                entity.Data = bytes;
            }
            await CreateAsync(entity);
            return entity.Id;

        }

        // Delete all files for a given IDC and IDN
        public async Task DeleteAsync(string registersIdc, int registersIdn)
        {
            var files = await _context.RegisterFiles
                .Where(f => f.RegistersIdc == registersIdc && f.RegistersIdn == registersIdn)
                .ToListAsync();

            if (files.Any())
            {
                _context.RegisterFiles.RemoveRange(files);
                await _context.SaveChangesAsync();
            }
        }
    }
}
