.class public final Lcom/alipay/mobile/security/devicemanage/b/a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/devicemanage/b/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/security/tid/TidGetter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string/jumbo v0, "DeviceManagerListAdapter"

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->d:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->e:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->c:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->e:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/security/devicemanage/b/a;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->e:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->e:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    goto :goto_0
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;

    iget-object v3, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->tid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->deviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->tid:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;-><init>()V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->e:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/security/devicemanage/b/a;->a()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/b/a;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->e:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->e:Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->aG:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    new-instance v2, Lcom/alipay/mobile/security/devicemanage/b/a$a;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/devicemanage/b/a$a;-><init>(Lcom/alipay/mobile/security/devicemanage/b/a;)V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fW:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, v2, Lcom/alipay/mobile/security/devicemanage/b/a$a;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, v2, Lcom/alipay/mobile/security/devicemanage/b/a$a;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fz:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v1, v2, Lcom/alipay/mobile/security/devicemanage/b/a$a;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, v2, Lcom/alipay/mobile/security/devicemanage/b/a$a;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    move-object p2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/b/a;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$drawable;->v:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;

    if-nez v0, :cond_7

    move-object p2, v3

    :goto_2
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/devicemanage/b/a$a;

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/b/a;->getCount()I

    move-result v0

    if-ne v0, v6, :cond_4

    if-nez p1, :cond_3

    sget v0, Lcom/alipay/mobile/clientsecurity/R$drawable;->w:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_bottom_selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/b/a;->getCount()I

    move-result v0

    if-le v0, v6, :cond_0

    if-nez p1, :cond_5

    sget v0, Lcom/alipay/mobile/clientsecurity/R$drawable;->w:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/security/devicemanage/b/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_6

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_bottom_selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_6
    sget v0, Lcom/alipay/mobile/clientsecurity/R$drawable;->u:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    iget-object v2, p0, Lcom/alipay/mobile/security/devicemanage/b/a;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->tid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    iget-object v2, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->bo:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->useTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/alipay/mobile/security/devicemanage/b/a$a;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
