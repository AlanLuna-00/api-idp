import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { AppService } from './app.service';
import { Logger } from '@nestjs/common';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const instanceName = process.env.INSTANCE_NAME || 'default-instance';

  const logger = new Logger('Bootstrap');
  logger.log(`Starting ${instanceName} instance`);

  await app.listen(3000);
}

bootstrap();
