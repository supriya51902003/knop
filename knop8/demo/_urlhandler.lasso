<?LassoScript// this file is called by the atbegin handler, so it is executed before any page is being processed.// It should be placed directly inside the web root.var: 'siteroot'='/'; // adjust this so it reflects where the site is located in the web root. Must begin and end with /.if: (!(response_filepath -> endswith('.lasso') || response_filepath -> endswith('.lassoapp'))        || response_filepath == $siteroot + 'index.lasso');    // Requests without .lasso or .lassoapp extensions, unless it's the site's index.lasso    // run site    content_body = include: $siteroot + 'index.lasso';    content_body -> trim;    abort;else;/if;?>