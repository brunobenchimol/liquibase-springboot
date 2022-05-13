package org.brunobenchimol.liquibasespring;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
public class RunAfterStartup {

    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Value("${app.initcontainer.enabled}")
    private boolean initcontainer_mode;

    @EventListener(ApplicationReadyEvent.class)
    public void runAfterStartup() {

        if (initcontainer_mode) {
            logger.info("Running in initcontainer mode (k8s)");
            logger.info("Liquibase was successful. Shutdown sequence initiated...");
            System.exit(0);
        } 
        
    }

}
