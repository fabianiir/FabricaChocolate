using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FabricaChocolates.Startup))]
namespace FabricaChocolates
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
