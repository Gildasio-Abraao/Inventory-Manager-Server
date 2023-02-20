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

    if (res.statusCode !== 200) {
      res.json({
        code: 'Error',
        message: 'Failed to save product',
      });

      return;
    }

    res.json({
      code: 'Ok',
      message: 'Saved product',
    });
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

    if (res.statusCode !== 200) {
      res.json({
        code: 'Error',
        message: 'Failed to update product',
      });

      return;
    }

    res.json({
      code: 'Ok',
      message: 'Updated product',
    });
  }

  async delete(req, res) {
    const { id } = req.query;
    const ids = id.split(',');
    const deleteProduct = await Products.destroy({
      where: {
        id: ids,
      },
    });

    if (res.statusCode !== 200) {
      res.json({
        code: 'Error',
        message: 'Failed to delete product',
      });

      return;
    }

    res.json({
      code: 'Ok',
      message: 'Successfully deleted product',
    });
  }

  async listAllProducts(req, res) {
    const allProducts = await Products.findAll();
    res.json(allProducts);
  }
}

export default new ProductController;