*** Variables ***
${click_product}  xpath=(//div[@class="media media--height w-full h-full overflow-hidden flickity-cell is-selected"])[4]
${male_btn}     xpath=//div[@class="gender-button"]/a[1]
${size}     xpath=//select[@name="options[Size]"]
${quantity}     xpath=//input[@class="quantity__input"]
${add_cart}     xpath=//button[@name="add"]
${prodcut_name}     xpath=//h1[@class="heading leading-none product-title-sm mobile:product-title-sm col-span-full"]
${close_cart}   xpath=//button[@aria-controls="CartDrawer"]
${cart_icon}    xpath=//a[@href="/cart"]
${cart_product_name}    xpath=//div[@class="block leading-tight"]/a
