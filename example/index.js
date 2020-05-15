exports.handler = async event => {
    const { spawnSync } = require('child_process');
    const unzip = spawnSync('unzip', ['-h']);
    console.log(`stderr: ${zip.stderr}`);
    console.log(`stdout: ${zip.stdout}`);
};
