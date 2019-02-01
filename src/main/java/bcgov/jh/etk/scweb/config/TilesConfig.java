package bcgov.jh.etk.scweb.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

/**
 * The Class TilesConfig.
 * @author HLiang
 */
@Configuration
public class TilesConfig {
	/**
     * Tiles view resolver.
     *
     * @return the url based view resolver
     */
    @Bean
    public UrlBasedViewResolver tilesViewResolver() {
        UrlBasedViewResolver tilesViewResolver = new UrlBasedViewResolver();
		tilesViewResolver.setViewClass(TilesView.class);
		
        return tilesViewResolver;
    }

    /**
     * Tiles configurer.
     *
     * @return the tiles configurer
     */
    @Bean
    public TilesConfigurer tilesConfigurer() {
        TilesConfigurer configurer = new TilesConfigurer();
        configurer.setDefinitions("/WEB-INF/tiles.xml");
        return configurer;
    }

    /**
     * Message source.
     *
     * @return the message source
     */
    @Bean
    public MessageSource messageSource() {
        final Integer cacheSeconds = 30;
        PegdownMessageSource messageSource = new PegdownMessageSource();
        
        messageSource.setBasenames("/WEB-INF/messages/reloadable-messages", "/WEB-INF/messages/build-version", "/WEB-INF/messages/errors",
                "/WEB-INF/messages/common-messages", "/WEB-INF/messages/business-logger");
        
        messageSource.setDefaultEncoding("UTF-8");
        messageSource.setCacheSeconds(cacheSeconds);

        return messageSource;
    }
}
