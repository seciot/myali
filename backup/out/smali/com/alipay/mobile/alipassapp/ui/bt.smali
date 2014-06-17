.class final Lcom/alipay/mobile/alipassapp/ui/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/bt;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bt;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/bt;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->g(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/bt;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->h(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    return-void
.end method
