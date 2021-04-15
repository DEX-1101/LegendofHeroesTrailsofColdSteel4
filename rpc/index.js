const RPC = require("discord-rpc");
const client = new RPC.Client({transport: "ipc"});

const activity = {
    details: "Online Now",
    assets: {
        large_image: "1",
        large_text: "Laplace M",
        //small_image: "1",
        //small_text: "PC Client"
    },
    buttons: [
        {
        "label": "Invite",
        "url": "https://discord.com/api/oauth2/authorize?client_id=745836904997716098&permissions=1886912086&scope=bot"
        }
    ], 
    timestamps: {start: Date.now()},
    instance: true
};
client.on("ready", () => {
    client.request("SET_ACTIVITY", {pid: process.pid, activity: activity});
    console.log("RPC is Online");
})
client.login({ clientId: "832169325183893504" });