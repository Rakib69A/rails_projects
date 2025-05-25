# Remove all existing products
Product.delete_all

# Add demo product
Product.create!(
  title: 'Design and Build Great Web APIs',
  description:
    %(
    <p>
      <em>Robust, Reliable, and Resilient</em>
      APIs are transforming the business world at an increasing pace.
      Gain the essential skills needed to quickly design, build, and deploy
      quality web APIs that are robust, reliable, and resilient.
    </p>
  ),
  image_url: 'maapis.jpg',
  price: 24.95
)
