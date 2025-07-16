using Microsoft.AspNetCore.Authorization;

namespace Nexus.LAS.WebApi.Middlewares
{
    public class LasAuthorize: IAuthorizationRequirement
    {
        public LasAuthorize(string permission)
        {
            Permission = permission;
        }

        public string Permission {  get; set; }
    }
}
