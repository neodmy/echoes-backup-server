const System = require('systemic');
const { join } = require('path');

module.exports = () => new System({ name: 'echoes-backup-server' })
  .bootstrap(join(__dirname, 'components'));
