.class final Lcom/alipay/mobile/alipassapp/ui/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/biz/model/a;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/mobile/alipassapp/biz/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/mobile/alipassapp/biz/model/a;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    iget-boolean v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget-boolean v2, v2, Lcom/alipay/mobile/alipassapp/biz/model/a;->b:Z

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget v3, v3, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget v3, v3, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    if-nez v3, :cond_7

    :cond_0
    move v3, v6

    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget v4, v4, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    if-nez v4, :cond_8

    move v4, v6

    :goto_1
    iget-object v7, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget v7, v7, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    if-ne v7, v8, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;ZZZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget-boolean v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget-boolean v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/alipassapp/ui/bb;->getMoreFinish(Z)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    if-ne v0, v8, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget-boolean v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/bb;->a()I

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->g()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/bb;->getCount()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->m()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    move v3, v5

    goto :goto_0

    :cond_8
    move v4, v5

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->a:Lcom/alipay/mobile/alipassapp/biz/model/a;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->e:Ljava/lang/Exception;

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    if-eq v0, v8, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/bb;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ac;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->n()V

    goto :goto_2
.end method
