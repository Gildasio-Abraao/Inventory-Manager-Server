import { Router } from "express";
import ProductController from "../controllers/ProductController";
const routes = Router();

routes.get('/all-products', ProductController.listAllProducts);
routes.post('/add-product', ProductController.store);
routes.put('/update-product', ProductController.update);
routes.delete('/delete-product', ProductController.delete);

export default routes;