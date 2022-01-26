#priority 0
//TODO REMOVE THIS FILE FROM RELEASES
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;

//create crafttweaker dump on login in creative (hopefully dev mode) as server is not availaible when the script loads
//TODO only run in dev pack mode
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    if (event.player.creative) {
        server.commandManager.executeCommand(server, "ct dumpzs html");
    }
});
