import express from 'express';
import routes from '../routes';
import bodyParser from 'body-parser';
import cors from 'cors';

class App {
  constructor() {
    this.server = express();
    this.middlewares();
    this.routes();
  }

  // Middlewares
  middlewares() {
    this.server.use(express.json());
    this.server.use(bodyParser.urlencoded({
      extended: false,
    }));
    this.server.use(bodyParser.json());
    this.server.use(cors({
      origin: '*',
    }))
  }

  // Routes
  routes() {
    this.server.use(routes);
  }
}

export default new App().server;