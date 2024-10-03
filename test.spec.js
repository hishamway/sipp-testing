const { exec } = require('child_process');
const { chromium } = require('playwright');

(async () => {
  // Launch a browser instance using Playwright (if needed)
  const browser = await chromium.launch();
  const page = await browser.newPage();

  // Run the SIPp command
  const sippCommand = 'sipp -sf invite_uat_1005_1004.xml -inf invite.csv -m 1 3.223.93.152:5060';

  exec(sippCommand, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error executing SIPp command: ${error.message}`);
      return;
    }

    if (stderr) {
      console.error(`stderr: ${stderr}`);
      return;
    }

    console.log(`stdout: ${stdout}`);
  });

  // Perform any additional browser automation (if needed)
  await page.goto('https://www.example.com');

  // Close the browser instance
  await browser.close();
})();