.class final Lcom/alipay/mobile/alipassapp/ui/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/alipassapp/ui/bc;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/as;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/at;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/at;-><init>(Lcom/alipay/mobile/alipassapp/ui/as;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
