.class public Lorg/nyanya/android/traditionalt9/CandidateView;
.super Landroid/view/View;
.source "CandidateView.java"


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SUGGESTIONS:I = 0x20

.field private static final SCROLL_PIXELS:I = 0x14

.field private static final X_GAP:I = 0xa


# instance fields
.field private mBgPadding:Landroid/graphics/Rect;

.field private mColorNormal:I

.field private mColorOther:I

.field private mColorRecommended:I

.field mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field protected mSelectedIndex:I

.field private mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetScrollX:I

.field private mTotalWidth:I

.field private mVerticalPadding:I

.field private mWordWidth:[I

.field private mWordX:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/nyanya/android/traditionalt9/CandidateView;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x20

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-array v1, v2, [I

    iput-object v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mWordWidth:[I

    .line 27
    new-array v1, v2, [I

    iput-object v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mWordX:[I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/nyanya/android/traditionalt9/CandidateView;->setBackgroundColor(I)V

    .line 61
    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mColorNormal:I

    .line 62
    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mColorRecommended:I

    .line 63
    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mColorOther:I

    .line 64
    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mVerticalPadding:I

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mColorNormal:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f070002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPadding:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {p0, v4}, Lorg/nyanya/android/traditionalt9/CandidateView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 75
    invoke-virtual {p0, v3}, Lorg/nyanya/android/traditionalt9/CandidateView;->setWillNotDraw(Z)V

    .line 76
    invoke-virtual {p0, v3}, Lorg/nyanya/android/traditionalt9/CandidateView;->setHorizontalScrollBarEnabled(Z)V

    .line 77
    invoke-virtual {p0, v3}, Lorg/nyanya/android/traditionalt9/CandidateView;->setVerticalScrollBarEnabled(Z)V

    .line 78
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x101009e
        0x101009c
        0x101009d
        0x10100a7
    .end array-data
.end method

.method private scrollToTarget()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->getScrollX()I

    move-result v0

    .line 162
    .local v0, "sx":I
    iget v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    if-le v1, v0, :cond_1

    .line 163
    add-int/lit8 v0, v0, 0x14

    .line 164
    iget v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    if-lt v0, v1, :cond_0

    .line 165
    iget v0, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    .line 166
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->requestLayout()V

    .line 175
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/nyanya/android/traditionalt9/CandidateView;->scrollTo(II)V

    .line 176
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->invalidate()V

    .line 177
    return-void

    .line 169
    :cond_1
    add-int/lit8 v0, v0, -0x14

    .line 170
    iget v1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    if-gt v0, v1, :cond_0

    .line 171
    iget v0, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    .line 172
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lorg/nyanya/android/traditionalt9/CandidateView;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSuggestions:Ljava/util/List;

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    .line 196
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->invalidate()V

    .line 197
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTotalWidth:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTotalWidth:I

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSuggestions:Ljava/util/List;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 113
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 118
    :cond_2
    const/4 v14, 0x0

    .line 119
    .local v14, "x":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 120
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->getHeight()I

    move-result v9

    .line 121
    .local v9, "height":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 122
    .local v7, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 123
    .local v6, "paint":Landroid/graphics/Paint;
    int-to-float v1, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v15, v1

    .line 125
    .local v15, "y":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 127
    .local v11, "suggestion":Ljava/lang/String;
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 128
    .local v12, "textWidth":F
    float-to-int v1, v12

    add-int/lit8 v13, v1, 0x14

    .line 130
    .local v13, "wordWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mWordX:[I

    aput v14, v1, v10

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mWordWidth:[I

    aput v13, v1, v10

    .line 132
    move-object/from16 v0, p0

    iget v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mColorNormal:I

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    move-object/from16 v0, p0

    iget v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    if-ne v10, v1, :cond_3

    .line 136
    int-to-float v1, v14

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v13, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    neg-int v1, v14

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 141
    move-object/from16 v0, p0

    iget v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mColorRecommended:I

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    :goto_2
    add-int/lit8 v1, v14, 0xa

    int-to-float v1, v1

    int-to-float v2, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v1, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    move-object/from16 v0, p0

    iget v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mColorOther:I

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    add-int v1, v14, v13

    int-to-float v1, v1

    const/high16 v2, 0x3f000000

    add-float/2addr v2, v1

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    add-int v1, v14, v13

    int-to-float v1, v1

    const/high16 v4, 0x3f000000

    add-float/2addr v4, v1

    add-int/lit8 v1, v9, 0x1

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 152
    add-int/2addr v14, v13

    .line 125
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 143
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mColorOther:I

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 154
    .end local v11    # "suggestion":Ljava/lang/String;
    .end local v12    # "textWidth":F
    .end local v13    # "wordWidth":I
    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTotalWidth:I

    .line 155
    move-object/from16 v0, p0

    iget v1, v0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    invoke-virtual/range {p0 .. p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->getScrollX()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 156
    invoke-direct/range {p0 .. p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->scrollToTarget()V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 87
    const/16 v2, 0x32

    invoke-static {v2, p1}, Lorg/nyanya/android/traditionalt9/CandidateView;->resolveSize(II)I

    move-result v1

    .line 92
    .local v1, "measuredWidth":I
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 93
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mVerticalPadding:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v0, v2, v3

    .line 97
    .local v0, "desiredHeight":I
    invoke-static {v0, p2}, Lorg/nyanya/android/traditionalt9/CandidateView;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/nyanya/android/traditionalt9/CandidateView;->setMeasuredDimension(II)V

    .line 98
    return-void
.end method

.method protected scrollSuggestion(I)V
    .locals 6
    .param p1, "increment"    # I

    .prologue
    const/4 v5, 0x0

    .line 200
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSuggestions:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 201
    iget v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    .line 202
    iget v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 203
    iput v5, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    .line 208
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->getWidth()I

    move-result v0

    .line 209
    .local v0, "fullsize":I
    div-int/lit8 v1, v0, 0x2

    .line 210
    .local v1, "halfsize":I
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mWordX:[I

    iget v3, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    aget v2, v2, v3

    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mWordWidth:[I

    iget v4, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    .line 211
    iget v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    if-gez v2, :cond_4

    .line 212
    iput v5, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    .line 217
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->invalidate()V

    .line 219
    .end local v0    # "fullsize":I
    .end local v1    # "halfsize":I
    :cond_2
    return-void

    .line 204
    :cond_3
    iget v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    if-gez v2, :cond_0

    .line 205
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    goto :goto_0

    .line 213
    .restart local v0    # "fullsize":I
    .restart local v1    # "halfsize":I
    :cond_4
    iget v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    iget v3, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTotalWidth:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    .line 214
    iget v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTotalWidth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    goto :goto_1
.end method

.method protected setSuggestions(Ljava/util/List;I)V
    .locals 1
    .param p2, "initialSel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->clear()V

    .line 181
    if-eqz p1, :cond_0

    .line 182
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSuggestions:Ljava/util/List;

    .line 183
    iput p2, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mSelectedIndex:I

    .line 185
    :cond_0
    invoke-virtual {p0, v0, v0}, Lorg/nyanya/android/traditionalt9/CandidateView;->scrollTo(II)V

    .line 186
    iput v0, p0, Lorg/nyanya/android/traditionalt9/CandidateView;->mTargetScrollX:I

    .line 189
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->invalidate()V

    .line 190
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/CandidateView;->requestLayout()V

    .line 191
    return-void
.end method
