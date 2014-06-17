.class final Lcom/alipay/mobile/alipassapp/ui/er;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d:Lcom/alipay/mobile/alipassapp/ui/eu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/eu;->getMoreFinish(Z)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/c;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/c;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/c;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->d:Lcom/alipay/mobile/alipassapp/ui/eu;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/c;->b()Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/c;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/eu;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/er;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->f(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4f1a\u5458\u5361\u9886\u5361\u5217\u8868\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
