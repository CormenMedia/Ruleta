using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RuletaSheldon.Startup))]
namespace RuletaSheldon
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
