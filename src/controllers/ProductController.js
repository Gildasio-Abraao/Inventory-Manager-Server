import Products from "../models/Products";

class ProductController {
  async store(req, res) {
    const { name, description, category, price, quantity } = req.body;
    const createNewProduct = await Products.create({
      name,
      description,
      category,
      price,
      quantity,
    });

    res.json(createNewProduct);
  }

  async update(req, res) {
    const { id, name, description, category, price, quantity } = req.body;
    const updateProduct = await Products.update({
      name,
      description,
      category,
      price,
      quantity,
    }, {
      where: {
        id,
      }
    });

    res.json(updateProduct);
  }

  async delete(req, res) {
    const { id } = req.query;
    const ids = id.split(',');
    const deleteProduct = await Products.destroy({
      where: {
        id: ids,
      },
    });

    res.json(deleteProduct);
  }

  async listAllProducts(req, res) {
    const allProducts = await Products.findAll();
    res.json(allProducts);
  }
}

export default new ProductController;