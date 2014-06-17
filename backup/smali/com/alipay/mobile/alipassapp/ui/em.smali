.class final Lcom/alipay/mobile/alipassapp/ui/em;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/alipassapp/ui/ew;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/em;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/en;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/en;-><init>(Lcom/alipay/mobile/alipassapp/ui/em;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
