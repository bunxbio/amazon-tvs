pages << {
  url: 'https://www.amazon.com/s?rh=n%3A6459737011&fs=true&ref=lp_6459737011_sar',
  page_type: "listings",
  fetch_type: 'browser',
  force_fetch: true,
  method: "GET",
  headers: {"User-Agent" => "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36"},
  driver: {
    name: "click see all results",
    code: "await page.click('#a-page > div.a-container > div.a-row.apb-browse-two-col-center-pad > div.a-column.a-span12.aok-float-right.apb-browse-col-pad-left.apb-browse-two-col-center-margin-right > div:nth-child(12) > div.a-section.a-spacing-none > div > div > a'); await sleep(3000);"
  },
  vars: {
    category: "LED & LCD TVs"
  }
}

pages << {
  url: 'https://www.amazon.com/s?rh=n%3A6463520011&fs=true&ref=lp_6463520011_sar',
  page_type: "listings",
  fetch_type: 'browser',
  force_fetch: true,
  method: "GET",
  headers: {"User-Agent" => "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36"},
  driver: {
    name: "click see all results",
    code: "await page.click('#a-page > div.a-container > div.a-row.apb-browse-two-col-center-pad > div.a-column.a-span12.aok-float-right.apb-browse-col-pad-left.apb-browse-two-col-center-margin-right > div:nth-child(12) > div.a-section.a-spacing-none > div > div > a'); await sleep(3000);"
  },
  vars: {
    category: "OLED TVs"
  }
}