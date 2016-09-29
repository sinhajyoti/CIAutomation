using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MVCProj09292016.Startup))]
namespace MVCProj09292016
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
