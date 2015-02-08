{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PositionErrorCallback
       (positionErrorCallbackNewSync, positionErrorCallbackNewAsync,
        PositionErrorCallback, IsPositionErrorCallback,
        castToPositionErrorCallback, gTypePositionErrorCallback,
        toPositionErrorCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionErrorCallback Mozilla PositionErrorCallback documentation> 
positionErrorCallbackNewSync ::
                             (MonadIO m) =>
                               (Maybe PositionError -> IO Bool) -> m PositionErrorCallback
positionErrorCallbackNewSync callback
  = liftIO
      (PositionErrorCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionErrorCallback Mozilla PositionErrorCallback documentation> 
positionErrorCallbackNewSync' ::
                              (MonadIO m) =>
                                ForeignRetention ->
                                  Bool ->
                                    (Maybe PositionError -> IO Bool) -> m PositionErrorCallback
positionErrorCallbackNewSync' retention continueAsync callback
  = liftIO
      (PositionErrorCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionErrorCallback Mozilla PositionErrorCallback documentation> 
positionErrorCallbackNewAsync ::
                              (MonadIO m) =>
                                (Maybe PositionError -> IO Bool) -> m PositionErrorCallback
positionErrorCallbackNewAsync callback
  = liftIO
      (PositionErrorCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionErrorCallback Mozilla PositionErrorCallback documentation> 
positionErrorCallbackNewAsync' ::
                               (MonadIO m) =>
                                 ForeignRetention ->
                                   (Maybe PositionError -> IO Bool) -> m PositionErrorCallback
positionErrorCallbackNewAsync' retention callback
  = liftIO
      (PositionErrorCallback . castRef <$>
         asyncCallback1 retention
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))
#else
module GHCJS.DOM.PositionErrorCallback (
  ) where
#endif