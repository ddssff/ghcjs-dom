{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PageTransitionEvent
       (ghcjs_dom_page_transition_event_get_persisted,
        pageTransitionEventGetPersisted, PageTransitionEvent,
        IsPageTransitionEvent, castToPageTransitionEvent,
        gTypePageTransitionEvent, toPageTransitionEvent)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "($1[\"persisted\"] ? 1 : 0)"
        ghcjs_dom_page_transition_event_get_persisted ::
        JSRef PageTransitionEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent.persisted Mozilla PageTransitionEvent.persisted documentation> 
pageTransitionEventGetPersisted ::
                                (MonadIO m, IsPageTransitionEvent self) => self -> m Bool
pageTransitionEventGetPersisted self
  = liftIO
      (ghcjs_dom_page_transition_event_get_persisted
         (unPageTransitionEvent (toPageTransitionEvent self)))
#else
module GHCJS.DOM.PageTransitionEvent (
  ) where
#endif