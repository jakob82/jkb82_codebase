let fs = require('fs');

const cssValues=["0", "25", "50", "75", "100", "125", "150", "175", "200", "225", "250"];

let textblock="\n h1 {"
+           "\n\t color: white;"
+           "\n\t font-size: 16;"
+           "\n\t font-family: 'Roboto', sans-serif;"
+           "\n\t text-align: center;"
+       "\n }"
+       "\n h2 {"
+           "\n\t color: yellow;"
+           "\n\t font-size: 14;"
+           "\n\t font-family: 'Roboto', sans-serif;"
+       "\n text-align: center;"
+       "\n }"
+       "\n h3 {"
+           "\n\t color: white;"
+           "\n\t font-size: 12;"
+           "\n\t font-family: 'Roboto', sans-serif;"
+           "\n\t text-align: center;"
+       "\n }"
+       "\n body {"
+           "\n\t color: yellow;"
+           "\n\t font-family: 'Roboto', sans-serif;"
+           "\n\t text-align: center;"
+           "\n\t background-color: black;"
+       "\n }";

let range=0;

function createCSSpatterns() {

    for (let i1 = 0; i1 < 10000; i1++) {
        let cssTest = ["style" + i1 + ".css"];
        console.log(cssTest, "utf-8");

        let rgbaValue1="rgba(" + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] +","
                        + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] + ","
                        + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] + ","
                        + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] + ")";

        let rgbaValue2="rgba(" + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] +","
                        + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] + ","
                        + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] + ","
                        + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] + ")";

        let rgbaValue3="rgba(" + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] +","
                        + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] + ","
                        + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] + ","
                        + cssValues[Math.floor(Math.random() * (cssValues.length - 1)) + 1] + ")";


        textblock="\n h1 {"
        +           "\n\t color:" + rgbaValue1 + ";"
        +           "\n\t font-size: 16;"
        +           "\n\t font-family: 'Roboto', sans-serif;"
        +           "\n\t text-align: center;"
        +       "\n }"
        +       "\n h2 {"
        +           "\n\t color:" + rgbaValue2 + ";"
        +           "\n\t font-size: 16;"
        +           "\n\t font-family: 'Roboto', sans-serif;"
        +           "\n\t text-align: center;"
        +       "\n }"
        +       "\n h3 {"
        +           "\n\t color:" + rgbaValue1 + ";"
        +           "\n\t font-size: 16;"
        +           "\n\t font-family: 'Roboto', sans-serif;"
        +           "\n\t text-align: center;"
        +       "\n }"
        +       "\n body {"
        +           "\n\t color:" + rgbaValue2 + ";"
        +           "\n\t text-align: center;"
        +           "\n\t background-color: " + rgbaValue3 + ";"
        +       "\n }";

        fs.writeFileSync("./CSS/" + cssTest, textblock);
    }
}

createCSSpatterns();