echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

if $(ConfigurationName) == Debug (
    echo "Debug"
    echo "Please start a client at $(ProjectDir)client"
) else (
    echo "Release configuration"
    echo "Building production client...."
    cd $(ProjectDir)client
    ng build --prod --env=prod --deploy-url=../wwwroot
)

echo "Build end." 
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"