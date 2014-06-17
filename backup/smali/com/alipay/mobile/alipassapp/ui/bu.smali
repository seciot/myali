.class final Lcom/alipay/mobile/alipassapp/ui/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/bu;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/bu;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/bu;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bu;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/bu;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/bu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    return-void
.end method
