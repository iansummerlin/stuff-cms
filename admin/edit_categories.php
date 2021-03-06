<?php include 'includes/partials/header.php' ?>
    <div class="col-lg-12">
        <?php 
            editCategory();
        ?>
    </div>
    <div class="col-lg-6">
        <div class="card">
            <div class="header">
                <h2 class="title">Update Category</h2>
            </div>
            <div class="content">
                <form action="" method="POST">
                    <label for="cat_title">Category Title</label>
                    <div class="form-group">
                        <input class="form-control border-input" type="text" name="cat_title" value="<?php echo $cat_title; ?>">
                    </div>
                    <div class="form-group">
                        <input class="btn btn-danger btn-lg" type="submit" name="update" value="Update Category">
                        <a class="ml-2" href="categories.php">Go back</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="card">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Category Title</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            displayCategories();
                            deleteCategory()
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php include 'includes/partials/footer.php' ?>
