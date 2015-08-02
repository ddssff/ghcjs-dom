{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TextTrackCueList
       (js_item, item, js_getCueById, getCueById, js_getLength, getLength,
        TextTrackCueList, castToTextTrackCueList, gTypeTextTrackCueList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef TextTrackCueList -> Word -> IO (JSRef TextTrackCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.item Mozilla TextTrackCueList.item documentation> 
item ::
     (MonadIO m) => TextTrackCueList -> Word -> m (Maybe TextTrackCue)
item self index
  = liftIO ((js_item (unTextTrackCueList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getCueById\"]($2)"
        js_getCueById ::
        JSRef TextTrackCueList -> JSString -> IO (JSRef TextTrackCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.getCueById Mozilla TextTrackCueList.getCueById documentation> 
getCueById ::
           (MonadIO m, ToJSString id) =>
             TextTrackCueList -> id -> m (Maybe TextTrackCue)
getCueById self id
  = liftIO
      ((js_getCueById (unTextTrackCueList self) (toJSString id)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef TextTrackCueList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.length Mozilla TextTrackCueList.length documentation> 
getLength :: (MonadIO m) => TextTrackCueList -> m Word
getLength self = liftIO (js_getLength (unTextTrackCueList self))