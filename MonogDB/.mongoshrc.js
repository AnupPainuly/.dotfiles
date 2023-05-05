// Use nerd fonts for the terminal to get the pretty icons
// https://github.com/ryanoasis/nerd-fonts
(() => {
  // Support for colors
  // NPM install chalk where mongosh can find it
  // (or set NODE_PATH to where the global modules are installed)
  const chalk = require('chalk');

  _prompt = () => {
    try {
      db.getMongo();
    } catch {
      return chalk.blue('\uf701') + ' →  ';
    }
    const dbName = db.getName();
    const serverBuildInfo = db.serverBuildInfo();
    const readPref = db.getMongo().getReadPrefMode();
    const atlas = /mongodb.net/.test(db.getMongo()._uri);
    const rpTagSet = db.getMongo().getReadPrefTagSet();
    const analyticsNode = rpTagSet ? rpTagSet.findIndex(({
      nodeType
    }) => nodeType === 'ANALYTICS') >= 0 : false;
    const localhost = /localhost|127\.0\.0\.1/.test(db.getMongo()._uri);
    //const isSecondary = !!db.hello().secondary;
    let hasPrimary;
    try {
      hasPrimary = !!rs.status().members.find(({state}) => state === 1);
    } catch {
      // Fails when not started as replica set
      hasPrimary = true;
    }
    const leaf = '\ue7a4';
    const laptop = '';
    const ship = '\uf2cd';
    const dbligature = '\ue706';
    const promptligature = '';

    let serverInfo = '';
    let dbligvar='';
    let prompt_ligature_var=''
    let dbName_var=''
    let readPref_var=''
    if (serverBuildInfo.dataLake) {
      serverInfo += chalk.green(ship) + ' ';
    } else if (serverBuildInfo.modules.includes('enterprise')) {
      serverInfo += `${atlas ? chalk.green('\uf0c2'): 'Enterprise'} `;
    } else if (localhost) {
      serverInfo += chalk.green(laptop) + ' ';
    }

    dbligvar += chalk.blue(dbligature) + '';
    prompt_ligature_var += chalk.greenBright(promptligature) + ' ';
    dbName_var += chalk.yellow.bold(dbName) + '';
    readPref_var += chalk.hex('#b16286').bold(readPref) + '';

    return `${serverInfo}${hasPrimary ? '₁' : '₂'} \uf831 ${readPref_var} ${analyticsNode ? chalk.cyan('\uf080 ') : ''} ${dbligvar} ${dbName_var} ${prompt_ligature_var}`;
  };

  boringPrompt = () => { prompt = undefined };
  prettyPrompt = () => { prompt = _prompt };
  prettyPrompt();
})();
