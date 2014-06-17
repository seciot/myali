.class Lcom/alipay/mobile/common/media/MediaLoadManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/media/MediaLoadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$1;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0

    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 4

    check-cast p1, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$1;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    const/16 v1, 0x102

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/alipay/mobile/common/media/MediaLoadManager;->a(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$500(Lcom/alipay/mobile/common/media/MediaLoadManager;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3

    check-cast p1, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$1;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    #getter for: Lcom/alipay/mobile/common/media/MediaLoadManager;->f:Ljava/util/Vector;
    invoke-static {v0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$000(Lcom/alipay/mobile/common/media/MediaLoadManager;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$1;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/alipay/mobile/common/media/MediaLoadManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$100(Lcom/alipay/mobile/common/media/MediaLoadManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$1;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    #getter for: Lcom/alipay/mobile/common/media/MediaLoadManager;->k:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$200(Lcom/alipay/mobile/common/media/MediaLoadManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$1;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/alipay/mobile/common/media/MediaLoadManager;->b(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$300(Lcom/alipay/mobile/common/media/MediaLoadManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$1;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$400(Lcom/alipay/mobile/common/media/MediaLoadManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 0

    return-void
.end method
