"app.js" 9L, 203C                                                                                                                                                                       1,1           All
/*
 * Copyright (c) 2014-2021 Bjoern Kimminich.
 * SPDX-License-Identifier: MIT
 */
require('trend_app_protect')
require('./lib/startup/validateDependencies')().then(() => {
  const server = require('./server')
  server.start()
})
