pages << {
  url: 'https://www.amazon.com/s?k=LED+%26+LCD+TVs&i=electronics&rh=n%3A6459737011&qid=1629141285&ref=sr_pg_1',
  page_type: "search",
  fetch_type: 'browser',
  force_fetch: true,
  method: "GET",
  headers: {"User-Agent" => "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36"},
  driver: {
    code: "await page.evaluate('window.scrollBy(0,1200)'); await sleep(1000); await page.evaluate('window.scrollBy(0,1200)'); await sleep(1000);await page.evaluate('window.scrollBy(0,1200)'); await sleep(1000);await page.evaluate('window.scrollBy(0,1200)'); await sleep(1000);"
  },
  vars: {
    category: "LED & LCD TVs"
  }
}

pages << {
  url: 'https://www.amazon.com/s?k=OLED+TVs&rh=n%3A6463520011&ref=nb_sb_noss',
  page_type: "search",
  fetch_type: 'browser',
  force_fetch: true,
  method: "GET",
  headers: {"User-Agent" => "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36"},
  driver: {
    code: "await page.evaluate('window.scrollBy(0,1200)'); await sleep(1000); await page.evaluate('window.scrollBy(0,1200)'); await sleep(1000);await page.evaluate('window.scrollBy(0,1200)'); await sleep(1000);await page.evaluate('window.scrollBy(0,1200)'); await sleep(1000);"
  },
  vars: {
    category: "OLED TVs"
  }
}