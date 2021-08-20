pages << {
  url: 'https://www.amazon.com/s?k=LED+%26+LCD+TVs&i=electronics&rh=n%3A6459737011&qid=1629141285&ref=sr_pg_1',
  page_type: "search",
  fetch_type: 'browser',
  force_fetch: true,
  method: "GET",
  headers: {"User-Agent" => "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36"},
#  driver: {
#    pre_code: "intercept((request, overrides) => {
#    overrides['url'] = 'https://www.amazon.com/s?rh=n%3A6459737011&fs=true&ref=lp_6459737011_sar';
#    return true;
#  });"
#  },
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
#  driver: {
#    pre_code: "intercept((request, overrides) => {
#    overrides['url'] = 'https://www.amazon.com/s?rh=n%3A6463520011&fs=true&ref=lp_6463520011_sar';
#    return true;
#  });"
#  },
  vars: {
    category: "OLED TVs"
  }
}