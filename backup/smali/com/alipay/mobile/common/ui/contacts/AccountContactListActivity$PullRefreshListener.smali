.class Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$PullRefreshListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$PullRefreshListener;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$PullRefreshListener;-><init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;)V

    return-void
.end method


# virtual methods
.method public canRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$PullRefreshListener;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_framework_pullrefresh_overview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APOverView;

    return-object v0
.end method

.method public onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity$PullRefreshListener;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->manualUpdateHistory()V

    return-void
.end method
