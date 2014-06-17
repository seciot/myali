.class public Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/alipay/mobile/mobilerechargeapp/utils/SelectAccountListener;


# static fields
.field private static l:Ljava/lang/String;

.field private static final m:[Ljava/lang/String;


# instance fields
.field private A:Landroid/content/Context;

.field private B:Ljava/lang/String;

.field private C:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

.field private H:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

.field private I:Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

.field private J:Z

.field private K:Landroid/text/TextWatcher;

.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field protected b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field protected c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

.field protected d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected e:Lcom/alipay/mobile/commonui/widget/APSpinner;

.field protected f:Lcom/alipay/mobile/commonui/widget/APButton;

.field protected g:Lcom/alipay/mobile/commonui/widget/APButton;

.field protected h:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected i:Lcom/alipay/mobile/commonui/widget/APButton;

.field protected j:Lcom/alipay/mobile/commonui/widget/APButton;

.field protected k:Lcom/alipay/mobile/commonui/widget/APListView;

.field private n:Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;

.field private o:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

.field private p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private q:Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;

.field private final r:Landroid/os/Handler;

.field private s:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

.field private t:Ljava/lang/String;

.field private u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

.field private v:Ljava/util/ArrayList;

.field private w:Ljava/util/ArrayList;

.field private x:Ljava/util/ArrayList;

.field private y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

.field private z:Lcom/alipay/mobile/mobilerechargeapp/data/GenerateData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "50"

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->l:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "20"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "30"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "100"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "200"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "300"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "500"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->r:Landroid/os/Handler;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->v:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->x:Ljava/util/ArrayList;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    invoke-direct {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->B:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->D:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->E:I

    iput-boolean v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->F:Z

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/av;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->G:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/ba;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/ba;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->I:Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

    iput-boolean v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->J:Z

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/bc;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bc;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->K:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;)Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->H:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    return-object p1
.end method

.method private static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    new-instance v3, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-direct {v3}, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->getB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->getA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/alipay/mobile/mobilerechargeapp/data/ContactList;

    invoke-direct {v3}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactList;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->x:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v3, Lcom/alipay/mobile/mobilerechargeapp/data/ContactList;->a:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    const-string/jumbo v4, "sysphonelist"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "bindphonenum"

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "err_valid"

    iget-boolean v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->D:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "phone_status"

    iget v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->E:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/16 v3, 0x9

    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/alipay/mobile/mobilerechargeapp/data/ContactList;->a:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->s:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/bf;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/bf;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tradeNo= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bizType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bizSubType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>()V

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizType(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizSubType(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setPartnerID(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setOrderNo(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setShowBizResultPage(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->G:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->boot(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    return-void

    :cond_0
    const-string/jumbo v2, "puc_charge"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizSubType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g()V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method

.method private static b(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCurrentPhoneNumber  phoneNumber = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " name= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->a()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    :cond_4
    if-nez p2, :cond_5

    const-string/jumbo p2, ""

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mHistoryManager:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mHistoryManager:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    invoke-static {p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object p2, v0

    goto :goto_1

    :cond_8
    move-object p2, v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->l:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mHistoryManager:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method private d()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mParams:Landroid/os/Bundle;

    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "actionType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "cphc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mParams:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "External param is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "returnUrl"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "External param, returnUrl is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e:Lcom/alipay/mobile/commonui/widget/APSpinner;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSpinner;->setSelection(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private g()V
    .locals 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q:Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    new-instance v7, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    invoke-direct {v7, v6}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->a(Ljava/util/List;)V

    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/mobilerechargeapp/R$color;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e:Lcom/alipay/mobile/commonui/widget/APSpinner;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSpinner;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->h()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/ap;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/ap;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;->bindPhone(Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;)V

    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e:Lcom/alipay/mobile/commonui/widget/APSpinner;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->k()V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/mobilerechargeapp/activity/aq;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/aq;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v3, "\u91cd\u8bd5"

    new-instance v4, Lcom/alipay/mobile/mobilerechargeapp/activity/ar;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/ar;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    new-instance v6, Lcom/alipay/mobile/mobilerechargeapp/activity/as;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/as;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d()Z

    move-result v0

    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v3, "\u91cd\u8bd5"

    new-instance v4, Lcom/alipay/mobile/mobilerechargeapp/activity/at;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/at;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    new-instance v6, Lcom/alipay/mobile/mobilerechargeapp/activity/au;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/au;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->H:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    return-object v0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private k()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e:Lcom/alipay/mobile/commonui/widget/APSpinner;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "\u8bf7\u9009\u62e9\u6b63\u786e\u7684\u5145\u503c\u9762\u989d"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/mobilerechargeapp/R$string;->k:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, ""

    :cond_2
    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->H:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private l()Ljava/util/ArrayList;
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v1, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mHistoryManager:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;->a()Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private m()V
    .locals 3

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method static synthetic m(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->F:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->C:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    invoke-virtual {v2}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->b()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->C:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    invoke-virtual {v2}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->b()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->E:I

    :cond_0
    const-string/jumbo v2, "bindphonenum"

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "err_valid"

    iget-boolean v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->D:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "phone_status"

    iget v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->E:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/16 v3, 0x8

    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic n(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private n()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->b()V

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "20000003"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000001"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "\u8df3\u8f6c\u8d26\u5355\u5217\u8868\u5931\u8d25\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;)Z

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o()V

    return-void
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic q(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->J:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iput-object p0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->A:Landroid/content/Context;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/data/GenerateData;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->A:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/data/GenerateData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->z:Lcom/alipay/mobile/mobilerechargeapp/data/GenerateData;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const-class v1, Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->n:Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    new-instance v4, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManagerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mHistoryManager:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;

    invoke-static {}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->a()Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->C:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->l()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    const-string/jumbo v0, "sourceId"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v1, "publicplatform"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    const-string/jumbo v0, "publicId"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    invoke-direct {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    if-nez v1, :cond_2

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    iget-object v4, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    invoke-direct {v1, p0, v4, v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;)V

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->k:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->I:Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->k:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->u:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string/jumbo v0, "dfp"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->l:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->setNeedShowClearButton(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    new-instance v1, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;

    const-string/jumbo v4, "3,8"

    invoke-direct {v1, v4}, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->setTextFormatter(Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->setLength(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getLastImgButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/alipay/mobile/mobilerechargeapp/R$color;->d:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->showLastImgBtn(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/bb;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bb;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/bd;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bd;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->setLastImgButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q:Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e:Lcom/alipay/mobile/commonui/widget/APSpinner;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e:Lcom/alipay/mobile/commonui/widget/APSpinner;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q:Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$drawable;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/an;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/an;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b()V

    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "anonymous"

    goto/16 :goto_1

    :cond_5
    move v0, v3

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v0, "sourceId"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v1, "todo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_5
    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->a(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_7
    move v0, v3

    goto :goto_5

    :cond_8
    invoke-static {p0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->b(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_9
    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/be;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/be;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/be;->start()V

    goto :goto_4
.end method

.method protected a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/activity/bh;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bh;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method protected a(ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m()V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->showLastImgBtn(Z)V

    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->b:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->s:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    iget-object v0, p2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->showLastImgBtn(Z)V

    iget-object v0, p2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->f:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->s:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    iget-object v0, p2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o()V

    :sswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->showLastImgBtn(Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->l:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x1e -> :sswitch_1
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method protected a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Rpc response.resultStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;->resultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;->resultStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;->valid:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->D:Z

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;->bindingMobileStatus:I

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->E:I

    iget-boolean v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;->totalSwitch:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->F:Z

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->C:Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->E:I

    iget-boolean v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->D:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/mobilerechargeapp/data/WarnStatus;->a(Ljava/lang/String;IZ)V

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    goto :goto_0
.end method

.method protected a(Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->dismissProgressDialog()V

    const-string/jumbo v0, "\u521b\u5efa\u624b\u673a\u5145\u503c\u8ba2\u5355\u5931\u8d25\uff0c\u672a\u77e5\u9519\u8bef\u3002"

    const/high16 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createOrder getResultStatus ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->getResultStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->getResultStatus()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->getTradeNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->getBizType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->getBizSubType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->dismissProgressDialog()V

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->getResultStatus()I

    move-result v0

    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/misc/ExtStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$string;->i:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$string;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/activity/bj;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bj;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$string;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/activity/ao;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/ao;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;->setMicroApplication(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;->setBindingCallback(Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;->queryTaobaoBindingByMobile(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->j(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CreateOrder=result.getMemo()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected a(Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->B:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->dismissProgressDialog()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "queryEcard ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->getResultStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->getResultStatus()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q:Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->getEcardVOList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->getShowCatname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mParams:Landroid/os/Bundle;

    :cond_1
    const-string/jumbo v1, ""

    if-eqz v0, :cond_5

    const-string/jumbo v1, "cmsMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e:Lcom/alipay/mobile/commonui/widget/APSpinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSpinner;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->h()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->getCmsMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->B:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->getResultStatus()I

    move-result v0

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g()V

    const/high16 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x1e

    const/4 v4, 0x4

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->n()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/GenerateData;->a(Ljava/util/ArrayList;)Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->p()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->J:Z

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isTouchItem = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->J:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "iLastNum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->B:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->B:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->x:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/alipay/mobile/mobilerechargeapp/data/SearchMatchRule;->a(Ljava/util/ArrayList;Ljava/lang/CharSequence;)Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mDisplayData.mDisplayType ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget v2, v2, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_5

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->n()V

    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget v1, v1, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u90fd\u6ca1\u6709\u554a\u4eb2\u7231\u7684 mDisplayData.mDisplayType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget v1, v1, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->p()V

    goto/16 :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->n()V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o()V

    goto/16 :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->showLastImgBtn(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m()V

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->p()V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->n()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o()V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->j:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(I)V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o()V

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->f:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->s:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-virtual {p0, v5, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v5, v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m()V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->j:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(I)V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o()V

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m()V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->j:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_0
        0x3c -> :sswitch_1
    .end sparse-switch
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a()Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Rpc Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;)V
    .locals 6

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(I)V

    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;

    invoke-direct {v5}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;-><init>()V

    invoke-virtual {v5, p1}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;->setMobile(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;->setFacePrice(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;->setShowedPrice(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;->setItemId(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;->setChannelType(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;->setPromotionPrice(Ljava/lang/String;)V

    const-string/jumbo v0, "sourceId"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get create source from param:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "default"

    :cond_0
    invoke-virtual {v5, v0}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;->setCreateSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->s:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->a:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;->setMobileSource(Ljava/lang/String;)V

    const-string/jumbo v0, "activity"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :cond_1
    invoke-virtual {v5, v0}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;->setActivity(Ljava/lang/String;)V

    const-string/jumbo v0, "tagid"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    invoke-virtual {v5, v0}, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;->setPromotion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a(Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;)Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->s:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    :cond_4
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->j(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$string;->a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/mobilerechargeapp/activity/bg;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bg;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "\u8bf7\u9009\u62e9\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->showLastImgBtn(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Landroid/view/View;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    move v0, v2

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_5
    iput-boolean v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->J:Z

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->e:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->s:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Ljava/util/ArrayList;)V
    .locals 4

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->v:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->l()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readRechargeHistoryInfo : name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "- number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->z:Lcom/alipay/mobile/mobilerechargeapp/data/GenerateData;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->v:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/mobilerechargeapp/data/GenerateData;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->x:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->w:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/GenerateData;->a(Ljava/util/ArrayList;)Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mDisplayData.mList : name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "- number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    invoke-direct {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->y:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected b()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mParams:Landroid/os/Bundle;

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->finish()V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "tn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "bt"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bst"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5

    const-string/jumbo v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "\u8df3\u5165\u8be5\u4e1a\u52a1\u4f20\u5165\u7684\u53c2\u6570\u4e0d\u5b8c\u6574"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->toast(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->finish()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c()V

    const-string/jumbo v0, "mobileNo"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/PhoneContactUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "External param, phoneNumber is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_1
    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v1}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->K:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g()V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mHistoryManager:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;

    invoke-interface {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;->b()Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;->getA()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_a
    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->a:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->s:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->h(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->J:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->g()V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/az;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/az;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;-><init>(Landroid/content/Context;Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->a()Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(I)V

    :try_start_0
    const-string/jumbo v0, "sceneCode"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "appId"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    invoke-virtual {v2, p1, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->J:Z
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->B:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RpcException ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->destroy(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onActivityResult, requestCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p0, p3, p0}, Lcom/alipay/mobile/mobilerechargeapp/utils/PhoneContactUtil;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/alipay/mobile/mobilerechargeapp/utils/SelectAccountListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/ui/R$id;->lastImgBtn:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/PhoneContactUtil;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$id;->h:I

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->e(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->k()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$id;->d:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mHistoryManager:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;

    invoke-interface {v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;->c()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$id;->a:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v2, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mHistoryManager:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e:Lcom/alipay/mobile/commonui/widget/APSpinner;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/mobilerechargeapp/R$string;->k:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v1, ""

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5, v0}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;->a(Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$id;->z:I

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "http://d.alipay.com/mbresultyy/prc.htm"

    const-string/jumbo v1, "\u8fd0\u8425\u6d3b\u52a8"

    new-instance v2, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-direct {v2}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;-><init>()V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setRequestUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setNeedLogin(Z)V

    invoke-static {}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->getInstance()Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alipay/mobile/browser/HtmlActivityV2_;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "HARequest"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v2, "HandlerRegisterKey"

    new-instance v3, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;

    invoke-direct {v3}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;-><init>()V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->registerHandler(Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->h()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile recharge activity onTouch  event ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->showLastImgBtn(Z)V

    :cond_0
    return v2
.end method
