.class final Lcom/alipay/mobile/alipassapp/ui/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ay;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iput-boolean p2, p0, Lcom/alipay/mobile/alipassapp/ui/ay;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ay;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/ay;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ay;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->startProgressBar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ay;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->stopProgressBar()V

    goto :goto_0
.end method
