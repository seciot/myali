.class final Lcom/alipay/mobile/alipassapp/ui/el;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/el;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->getCardType()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->getTid()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/el;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-virtual {v3, v2, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
