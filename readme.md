const piprapayReadme = `
# How to Install PipraPay with Docker

To use PipraPay, you can simply run my Docker image. It will run on port 80 by default.

You can also use it in a Docker Compose setup like this:

\`\`\`yaml
services:
  piprapay:
    image: tamimhasandev/piprapay:latest
    # Optional port mapping
    # ports:
    #   - "8080:80"
    restart: unless-stopped
\`\`\`

That's it! Your PipraPay instance will be ready to use.
`;

export default piprapayReadme;