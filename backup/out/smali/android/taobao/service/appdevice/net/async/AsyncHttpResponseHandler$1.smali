.class Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler$1;->this$0:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler$1;->this$0:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
