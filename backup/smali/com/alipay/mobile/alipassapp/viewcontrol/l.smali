.class public final Lcom/alipay/mobile/alipassapp/viewcontrol/l;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/alipassapp/viewcontrol/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->a:Ljava/util/List;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->a:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_info_field_vertical:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/alipay/mobile/alipassapp/viewcontrol/o;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/o;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/l;B)V

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->tv_label:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, v2, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->tv_value:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, v2, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    :goto_0
    iget-object v1, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setAutoLinkMask(I)V

    iget-object v1, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    if-eqz v1, :cond_2

    iget-object v2, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v4, v4, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Landroid/content/Context;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v2, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/a;->b(Ljava/lang/String;)I

    move-result v5

    const/4 v2, -0x1

    if-ne v5, v2, :cond_0

    iget-object v2, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v7, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v7, v7, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {v2, v4, v6, v7}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APTextView;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    if-lez v5, :cond_1

    iget-object v2, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v4, v4, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setGravity(I)V

    iget-object v2, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/common/a;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v4, v4, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v6, v6, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/viewcontrol/o;

    move-object v3, v1

    goto/16 :goto_0

    :cond_4
    iget-object v2, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setAutoLinkMask(I)V

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Lcom/alipay/mobile/alipassapp/viewcontrol/o;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v8, "maps:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, ".*?\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Lcom/alipay/mobile/alipassapp/viewcontrol/m;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v14, v2, -0x1

    mul-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/2addr v14, v2

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x1

    invoke-direct {v10, p0, v11, v12, v13}, Lcom/alipay/mobile/alipassapp/viewcontrol/m;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/l;Ljava/lang/String;II)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v2, ""

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move v4, v2

    :goto_3
    :try_start_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_6

    new-instance v10, Lcom/alipay/mobile/alipassapp/ui/common/a;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v11, v2, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    const-string/jumbo v12, "map"

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/alipassapp/viewcontrol/m;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/viewcontrol/m;->a:Ljava/lang/String;

    iget-object v13, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/l;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v13, v13, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v10, v11, v12, v2, v13}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    new-instance v11, Lcom/alipay/mobile/alipassapp/viewcontrol/n;

    invoke-direct {v11, p0, v10}, Lcom/alipay/mobile/alipassapp/viewcontrol/n;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/l;Lcom/alipay/mobile/alipassapp/ui/common/a;)V

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/alipassapp/viewcontrol/m;

    iget v10, v2, Lcom/alipay/mobile/alipassapp/viewcontrol/m;->b:I

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/alipassapp/viewcontrol/m;

    iget v2, v2, Lcom/alipay/mobile/alipassapp/viewcontrol/m;->c:I

    const/16 v12, 0x21

    invoke-virtual {v9, v11, v10, v2, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v6, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
