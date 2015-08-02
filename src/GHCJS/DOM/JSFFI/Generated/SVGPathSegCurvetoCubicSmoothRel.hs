{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegCurvetoCubicSmoothRel
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setX2, setX2, js_getX2, getX2, js_setY2, setY2, js_getY2, getY2,
        SVGPathSegCurvetoCubicSmoothRel,
        castToSVGPathSegCurvetoCubicSmoothRel,
        gTypeSVGPathSegCurvetoCubicSmoothRel)
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
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x Mozilla SVGPathSegCurvetoCubicSmoothRel.x documentation> 
setX ::
     (MonadIO m) => SVGPathSegCurvetoCubicSmoothRel -> Float -> m ()
setX self val
  = liftIO (js_setX (unSVGPathSegCurvetoCubicSmoothRel self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x Mozilla SVGPathSegCurvetoCubicSmoothRel.x documentation> 
getX :: (MonadIO m) => SVGPathSegCurvetoCubicSmoothRel -> m Float
getX self
  = liftIO (js_getX (unSVGPathSegCurvetoCubicSmoothRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y Mozilla SVGPathSegCurvetoCubicSmoothRel.y documentation> 
setY ::
     (MonadIO m) => SVGPathSegCurvetoCubicSmoothRel -> Float -> m ()
setY self val
  = liftIO (js_setY (unSVGPathSegCurvetoCubicSmoothRel self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y Mozilla SVGPathSegCurvetoCubicSmoothRel.y documentation> 
getY :: (MonadIO m) => SVGPathSegCurvetoCubicSmoothRel -> m Float
getY self
  = liftIO (js_getY (unSVGPathSegCurvetoCubicSmoothRel self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;" js_setX2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x2 Mozilla SVGPathSegCurvetoCubicSmoothRel.x2 documentation> 
setX2 ::
      (MonadIO m) => SVGPathSegCurvetoCubicSmoothRel -> Float -> m ()
setX2 self val
  = liftIO (js_setX2 (unSVGPathSegCurvetoCubicSmoothRel self) val)
 
foreign import javascript unsafe "$1[\"x2\"]" js_getX2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x2 Mozilla SVGPathSegCurvetoCubicSmoothRel.x2 documentation> 
getX2 :: (MonadIO m) => SVGPathSegCurvetoCubicSmoothRel -> m Float
getX2 self
  = liftIO (js_getX2 (unSVGPathSegCurvetoCubicSmoothRel self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;" js_setY2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y2 Mozilla SVGPathSegCurvetoCubicSmoothRel.y2 documentation> 
setY2 ::
      (MonadIO m) => SVGPathSegCurvetoCubicSmoothRel -> Float -> m ()
setY2 self val
  = liftIO (js_setY2 (unSVGPathSegCurvetoCubicSmoothRel self) val)
 
foreign import javascript unsafe "$1[\"y2\"]" js_getY2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y2 Mozilla SVGPathSegCurvetoCubicSmoothRel.y2 documentation> 
getY2 :: (MonadIO m) => SVGPathSegCurvetoCubicSmoothRel -> m Float
getY2 self
  = liftIO (js_getY2 (unSVGPathSegCurvetoCubicSmoothRel self))