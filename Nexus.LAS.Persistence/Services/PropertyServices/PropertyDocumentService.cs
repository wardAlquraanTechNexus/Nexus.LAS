using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.CreatePropertyDocument;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.UpdatePropertyDocument;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.PropertyServices;

public class PropertyDocumentService : GenericService<PropertyDocument>, IPropertyDocumentService
{
    private readonly IPropertyDocumentRepo _repo;
    private readonly IRegisterFileRepo _registerFileRepo;
    private readonly IMapper _mapper;
    public PropertyDocumentService(
        NexusLASDbContext context, 
        IUserIdentityService userIdentityService, 
        IPropertyDocumentRepo repo, 
        IRegisterFileRepo registerFileRepo,
        IMapper mapper)
        : base(context, userIdentityService, repo)
    {
        _repo = repo;
        _registerFileRepo = registerFileRepo;
        _mapper = mapper;
    }

    public async Task<int> CreatePropertyDocument(CreatePropertyDocumentCommand command)
    {
        using (var transaction = await _context.Database.BeginTransactionAsync())
        {
            try
            {

                var propertyDocument = _mapper.Map<PropertyDocument>(command);
                var id = await _repo.CreateAsync(propertyDocument);



                if(command.File is not null)
                {
                    byte[] bytes;

                    using (var memoryStream = new MemoryStream())
                    {
                        await command.File.CopyToAsync(memoryStream);
                        bytes = memoryStream.ToArray();
                    }

                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = EntityIDCs.PropertyDocuments,
                        RegistersIdn = id,
                        Data = bytes,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };


                    await _registerFileRepo.CreateAsync(registerFile);
                }
                

                await transaction.CommitAsync();
                return id;

            }
            catch (Exception)
            {
                await transaction.RollbackAsync();
                throw;
            }

        }

    }
    public async Task<int> UpdatPropertyDocument(UpdatePropertyDocumentCommand command)
    {
        using (var transaction = await _context.Database.BeginTransactionAsync())
        {
            try
            {

                var propertyDocument = _mapper.Map<PropertyDocument>(command);
                await _repo.UpdateAsync(propertyDocument);

                if (command.File is not null)
                {


                    await _registerFileRepo.DeleteAsync(EntityIDCs.PropertyDocuments, command.Id);

                    // Add new file
                    byte[] bytes;
                    using (var memoryStream = new MemoryStream())
                    {
                        await command.File.CopyToAsync(memoryStream);
                        bytes = memoryStream.ToArray();
                    }

                    RegisterFile registerFile = new RegisterFile
                    {
                        RegistersIdc = EntityIDCs.PropertyDocuments,
                        RegistersIdn = command.Id,
                        Data = bytes,
                        ContentType = command.File.ContentType,
                        Name = command.File.FileName,
                    };

                    await _registerFileRepo.CreateAsync(registerFile);
                }
                else if (command.RemoveFile && command.File is null)
                {
                    await _registerFileRepo.DeleteAsync(EntityIDCs.PropertyDocuments, command.Id);

                }

                await transaction.CommitAsync();
                return command.Id;

            }
            catch (Exception)
            {
                await transaction.RollbackAsync();
                throw;
            }

        }



    }


    public async Task<PagingResult<PropertyDocumentDto>> GetPaging(GetPagingPropertyDocumentQuery param)
    {
        return await _repo.GetPaging(param);
    }


}