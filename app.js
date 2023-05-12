const log = require('node-file-logger');
const options = {
    timeZone: 'America/Los_Angeles',
    folderPath: './logs',      
    dateBasedFileNaming: false,
    fileName: 'logs',
    fileNameExtension: '.log',     
    
    dateFormat: 'YYYY-MM-DD',
    timeFormat: 'HH:mm:ss.SSS',
    logLevel: 'debug',
    onlyFileLogging: true
  }
  log.SetUserOptions(options); 
const express = require("express"),
    moment = require("moment-timezone"),
    app = express(),
    port = 3e3;
app.get("/", (e, m) => {
    let s = e.connection.remoteAddress,
        t = moment().tz(moment.tz.guess()).format("DD-MM-YYYY HH:mm:ss");
    m.send(`${s} : ${t}`);
}),
    app.listen(3e3, () => {
        log.Info(`${moment().format("DD-MM-YYYY HH:mm:ss")} : Aleksandra W\xf3jcik, 3000`);
    });
