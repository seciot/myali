.class final Lcom/alipay/mobile/base/engine/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

.field final synthetic c:Lcom/alipay/mobile/base/engine/ApkEngineUpdater;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/engine/ApkEngineUpdater;Ljava/lang/String;Lcom/alipay/mobile/quinox/engine/ApkEngineManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/base/engine/a;->c:Lcom/alipay/mobile/base/engine/ApkEngineUpdater;

    iput-object p2, p0, Lcom/alipay/mobile/base/engine/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/base/engine/a;->b:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0

    return-void
.end method

.method public final onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/base/engine/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/apkutil/MiscUtils;->verifyMD5AndLoadCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/base/engine/a;->b:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    iget-object v1, p0, Lcom/alipay/mobile/base/engine/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->updateEngine(Ljava/lang/String;)Z

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/base/engine/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0

    return-void
.end method

.method public final onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 0

    return-void
.end method
