.class final Lcom/alipay/mobile/alipassapp/ui/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/az;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

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
    .locals 3

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/az;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/ba;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/alipassapp/ui/ba;-><init>(Lcom/alipay/mobile/alipassapp/ui/az;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
