<?php include 'partials/header.php' ?>
<?php include 'partials/slider.php' ?>
	<div id="colorlib-container"> 
		<div class="container">
			<div class="row row-pb-md">
				<?php include 'partials/sidebar.php' ?>
				</div>
				<?php displayPostPreview(); ?>
				<div class="row">
					<div class="col-md-8 text-center">
						<ul class="pagination">
							<?php 
								for ($i = 1; $i <= $post_count; $i++)
								{
									if ($i == $page) 
									{
										echo "
											<li class='active'><a href='index.php?page=$i'>$i</a></li>
										";
									}
									else 
									{
										echo "
											<li><a href='index.php?page=$i'>$i</a></li>
										";
									}
								}
							?>
						</ul>
					</div>
					<?php include 'partials/footer.php' ?>

				</div>

			</div>
		</div>
