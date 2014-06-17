.class final Lcom/alipay/mobile/alipassapp/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ab;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ab;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/biz/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a()V

    return-void
.end method
