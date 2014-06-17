.class public interface abstract Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;
.super Ljava/lang/Object;


# virtual methods
.method public abstract data(ZILjava/io/InputStream;I)V
.end method

.method public abstract goAway(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
.end method

.method public abstract headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;)V
.end method

.method public abstract noop()V
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(II)V
.end method

.method public abstract rstStream(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
.end method

.method public abstract settings(ZLcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V
.end method

.method public abstract windowUpdate(IIZ)V
.end method
