exports.handler = async event => {
    const { spawnSync } = require('child_process');
    const zip = spawnSync('zip', ['-h']);
    console.log(`stderr: ${zip.stderr}`);
    console.log(`stdout: ${zip.stdout}`);
};
