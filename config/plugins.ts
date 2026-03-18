import type { Core } from '@strapi/strapi';

const config = ({ env }: Core.Config.Shared.ConfigParams): Core.Config.Plugin => ({
  graphql: {
    config: {
      endpoint: '/graphql',
      shadowCRUD: true,
      playgroundAlways: true, // 👈 enables the playground
      depthLimit: 7,
      amountLimit: 100,
    }
  }
});

export default config;