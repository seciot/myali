.class public final Lcom/alipay/mobile/deviceAuthorization/a/d;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->c:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/a/d;->a(I)Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;

    if-eqz v0, :cond_1

    move-object v3, v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->c:Landroid/view/LayoutInflater;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$layout;->i:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->y:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-boolean v2, v3, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->defaultChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v2, v3, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->forceChecked:Z

    if-nez v2, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->C:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, v3, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->optionText:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v3, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;->forceChecked:Z

    if-nez v2, :cond_3

    invoke-virtual {v5, v4}, Landroid/view/View;->setClickable(Z)V

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/a/e;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/deviceAuthorization/a/e;-><init>(Lcom/alipay/mobile/deviceAuthorization/a/d;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v5

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/a/d;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;

    move-object v3, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method
