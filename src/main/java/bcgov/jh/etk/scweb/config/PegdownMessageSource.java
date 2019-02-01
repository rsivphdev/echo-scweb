package bcgov.jh.etk.scweb.config;

import java.util.Locale;

import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import com.vladsch.flexmark.html.HtmlRenderer;
import com.vladsch.flexmark.parser.Parser;
import com.vladsch.flexmark.util.ast.Node;

/**
 * The Class PegdownMessageSource.
 * @author HLiang
 */
public class PegdownMessageSource extends ReloadableResourceBundleMessageSource {

    /*
     * (non-Javadoc)
     *
     * @see org.springframework.context.support.AbstractMessageSource#getMessageInternal(java.lang.String, java.lang.Object[], java.util.Locale)
     */
    @Override
    protected String getMessageInternal(final String code, final Object[] args, final Locale locale) {
        String resolvedMessage = super.getMessageInternal(code, args, locale);
        // We indicate markdown strings with a ~ at the beginning, if that is not there just return the string without Html conversion
        if (resolvedMessage != null && resolvedMessage.startsWith("~")) {
            resolvedMessage = resolvedMessage.substring(1);
        } else {
            return resolvedMessage;
        }
        Parser parser = Parser.builder().build();
        Node document = parser.parse(resolvedMessage);
        HtmlRenderer renderer = HtmlRenderer.builder().build();
        String htmlMessage = renderer.render(document);  
        return htmlMessage;
    }

}
