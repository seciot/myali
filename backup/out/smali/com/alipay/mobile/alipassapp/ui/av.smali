.class final Lcom/alipay/mobile/alipassapp/ui/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/biz/common/d;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    new-instance v4, Lcom/alipay/mobile/alipassapp/biz/model/a;

    invoke-direct {v4, v0, v1}, Lcom/alipay/mobile/alipassapp/biz/model/a;-><init>(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;I)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/biz/model/a;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasCurrent()I

    move-result v0

    if-eq v0, v2, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/biz/common/d;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    new-instance v5, Lcom/alipay/mobile/alipassapp/biz/model/a;

    invoke-direct {v5, v3, v2}, Lcom/alipay/mobile/alipassapp/biz/model/a;-><init>(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;I)V

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/biz/model/a;)V

    if-eqz v0, :cond_a

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasCurrent()I

    move-result v0

    if-eq v0, v2, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    move v3, v0

    :goto_2
    new-instance v4, Lcom/alipay/mobile/alipassapp/biz/model/a;

    invoke-direct {v4}, Lcom/alipay/mobile/alipassapp/biz/model/a;-><init>()V

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    const-string/jumbo v5, "\u52a0\u8f7d\u4e2d"

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v6}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v6

    invoke-virtual {v0, v5, v2, v6}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v2, v4, Lcom/alipay/mobile/alipassapp/biz/model/a;->d:Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/biz/common/d;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v5}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d()Z

    move-result v5

    invoke-virtual {v0, v2, v5}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;Z)Lcom/alipay/mobile/alipassapp/biz/model/a;

    move-result-object v0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    iput-object v2, v4, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    iput-object v0, v4, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    iget-object v0, v4, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_6

    iget-boolean v0, v4, Lcom/alipay/mobile/alipassapp/biz/model/a;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->dismissProgressDialog()V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->h(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/ui/common/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/aw;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/alipassapp/ui/aw;-><init>(Lcom/alipay/mobile/alipassapp/ui/av;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/common/k;->a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/biz/common/d;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    new-instance v5, Lcom/alipay/mobile/alipassapp/biz/model/a;

    invoke-direct {v5, v0, v1}, Lcom/alipay/mobile/alipassapp/biz/model/a;-><init>(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;I)V

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/biz/model/a;)V

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/biz/model/a;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->dismissProgressDialog()V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/av;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Z)V

    goto :goto_4

    :cond_a
    move v3, v0

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto/16 :goto_0
.end method
