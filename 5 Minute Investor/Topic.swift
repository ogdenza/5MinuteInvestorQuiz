////
////  Topic.swift
////  5 Minute Investor
////
////  Created by Zach Ogden on 12/8/19.
////  Copyright © 2019 Zach Ogden. All rights reserved.
////
//
//import Foundation
//
//class Topic {
//
//    var topicsArray = ["Why Invest?", "Stock", "Stock Market", "Stock Price/Symbol", "Public v. Private Company", "How to Buy a Stock", "Portfilio", "Capital Gain & ROI", "Risk ", "3 Pillar Investment Thesis", "Tips to save money to invest", "Index", "Bull/Bear Market", "Market Capitalization", "Blue Chip Stocks, Growth Stocks", "Sector/Industry", "Diversification", "Dividends & Dividend Yield", "Dividend Investing", "Balance Sheet", "Income Statement", "EPS, Earnings, Revenue", "Earnings date", "How to keep up with current business news", "Shares Outstanding, Bid, Ask, Spread", "Open/Close, Intraday Range, Volume", "P/E Ratio", "Mutual Funds", "ETFs", "Bonds", "Beta, Volatility, Vix", "Alpha, 52 Week Change / S&P 52 Week Change", "Short selling", "Day Trading", "Options", "Cryptocurrency, Blockchain", "Price Target ", "Analyst Recommendations", "Analyst Upgrade or Downgrade or Initiate", "Investment Time Horizons", "Management Effectiveness", "Undervalued/Overvalued", "10k/10q", "Assets, Liabilities", "Current Ratio", "Expenses & Profit Margin", "Operating Cash Flow", "Liquidity", "Market & Limit Orders", "Good-till Canceled & Good-till Date Orders", "Stop Loss & Stop Limit", "Merger", "Acquisition", "IPO", "Payout Ratio", "Dividend Dates", "Dividend Capturing", "Stock Split", "Stock Buyback", "Cost of Revenue & Gross Profit", "EBIT and EBITDA", "Calls", "Puts", "Activist Investor", "Commodities", "Arbitrage", "Impact Investing", "Real Estate Investing", "Penny Stocks", "Technical Investing", "Technical Patterns", "Corporate Tax Cuts", "Taxes on Dividends and Capital Gains", "Inflation", "Interest Rates", "Recessions", "Consumer Confidence, Consumer Sentiment", "Yield Curve", "Insider Trading & Insider Transactions", "Bubbles", "Trading on Margin", "2018 Recession", "Hedge", "Rule of 72"]
//
//
//    var questionsArrays = [
//        // Why Invest
//        ["What is the concept that explains that you earn interest on the principle and already accumulated interest?", "If you start with $100, how much will you have after 2 years with a 10% annual interest rate?", "If you do not invest, the effect of what will probably make your total purchasing power lower?"],
//        // Stock
//        ["What is the best definition of a stock?", "What is the type of stock called that almost always comes with voting rights?", "If you own 1% of the shares of a company, for what percent of the company’s income do you receive payments?"],
//        // Stock Market
//        ["What is the term for the lowest price for which a potential seller is willing to sell their stock?", "Historically, what is the average annual return of the stock market?", "When is the stock market open in Eastern Time?"],
//        // Stock Price/Symbol
//        ["What is the name for the abbreviation that represents a stock?", "A change in what is what often causes many quick fluctuations in the price of a stock?", "If the price of a share of Apple is $200 and the price of a share of the Seaboard Corporation is $4000, which stock represents a better value?"],
//        // Public v. Private Company
//        ["What types of companies can you buy stock of?", "Which type of company typically has the greatest number of investors?", "What is the main reason companies go public?"],
//        // How to Buy a Stock
//        ["Who can buy a stock?", "What is it called when a brokerage charges money for executing a trade you places?", "Where are the most trades placed by the average investor?"],
//        // Portfilio
//        ["Should your portfolio be made up of the same assets as your friend’s portfolio?", "What stocks should you invest in?", "How many stocks are listed on American stock exchanges?"],
//
//    ]
//
//
//    var answerChoicesArrays = [
//        // Why Invest?
//        [["Capital Gain", "Capital Appreciation", "Compound Interest", "Dividends"],["$100","$110","$120","$121"],["Inflation","Interest","Depreciation","Savings"]],
//        // Stock
//        [["A set of fixed payments for an upfront investment", "A part ownership of a company", "A decentralized currency", "An investment in a raw material"],["Preferred stock","Bond Stock","Common Stock","Class C Stock"],["0%","1%","100%","It depends"]],
//        // Stock Market
//        [["Bid", "Ask", "Spread", "Market Price"],["0%","3%","10%","25%"],["All Day","6AM - 6PM","9:30AM - 4PM","9AM - 5PM"]],
//        // Stock Price/Symbol
//        [["Ticker", "Tag", "Label", "Identifier"],["Demand of the stock","Supply (Quantity) of the stock","Both Supply and Demand","The Nash Equilibrium"],["Apple", "Seaboard Corporation", "Can’t tell based only on price", "The stocks are of equal value"]],
//        // Public v. Private Company
//        [["Public Companies", "Private Companies", "Start-ups", "All of the above"],["Public Companies","Private Companies","Start-ups", "All have about the same"],["To increase brand awareness", "To gain information on competitors", "To decrease regulations on its company", "To raise money"]],
//        // How to Buy a Stock
//        [["Everyone", "Only governmental employees", "Only wealthy individuals", "Only other public companies"],["Commission","Sale","Surcharge", "Tax"],["At the New York Stock Exchange", "By calling their brokerage", "Online brokerages", "eBay"]],
//        // Portfilio
//        [["Yes", "Yes, if your friend is smart", "Yes, if an investing professional made it for them", "No"],["High Growth Stocks","Low Growth Stocks","Half high growth and half low growth stocks", "Depends"],["30", "500", "About 10,000", "Over 1 million"]]
//
//
//
//    ]
//
//
//    var answersArrays = [
//        // Why Invest?
//        [3,4,1],
//        //Stock
//        [2,3,4],
//        // Stock Market
//        [2,3,3],
//        // Stock Price/Symbol
//        [1,1,3],
//        // Public v. Private Company
//        [1,1,4],
//        // How to Buy a Stock
//        [1,1,3],
//        // Portfilio
//        [4,4,3]
//    ]
//
//
//    var explanationsArrays = [
//        // Why Invest?
//        ["Compound interest is the idea that you earn interest on not only the principal investment but also on the interest already received. ", "After the first year you will have ($100)*(1.10) = $110. After the second year you will have ($110)(1.10) = $121.", "Inflation makes each dollar worth less, so if you do not grow your money, you are essentially losing money."],
//        // Stock
//        ["When you buy a stock, you are purchasing a very small fraction of the company. In other words, you are becoming a part owner of the company.", "Common stocks almost always comes with voting rights while preferred stocks do not.", "Common stocks almost always comes with voting rights while preferred stocks do not."],
//        // Stock Market
//        ["The ask price is the lowest price for which a potential seller is willing to sell their stock whereas the bid price is the highest price a potential buyer is willing to pay for a share. The difference between these prices is known as the bid-ask spread.", "On average, the stock market increases 10% a year. However, it is extremely important to realize that this return varies year to year, and is very rarely exactly 10%.", "The stock market is only considered open from 9:30AM - 4PM EST. During this time you can have your orders cleared immediately, but if you place trades outside this time, your orders will not execute until the market opens."],
//        // Stock Price/Symbol
//        ["A company’s ticker, or stock symbol, is an abbreviation that represents the company. For example, Apple trades under the ticker AAPL.", "While the supply of the stock can certainly change the stock price, the number of shares does not change very often. The number of shares do change when there is a stock split, additional share offering, stock buybacks, etc, but the day to day fluctuations of a stock are more often caused by changes in demand for the stock.", "You cannot compare companies based on their stock price. Even though most would agree that Apple is the better company, the stock isn’t a better value because it has a lower price. There are many ways to compare the value of companies but share price is not a metric that allows you to compare stocks."],
//        // Public v. Private Company
//        ["The average person is only able to invest in public companies which are the ones listed on the stock exchange. Usually only Venture Capitalists and Private Equity firms are able to invest in private companies.", "Public companies trade on the stock market, so they have thousands if not millions of different investors whereas private companies typically only have a handful of investors.", "The main reason companies decide to go public is to raise money for a number of reasons. With the extra money, the company can increase research & development, hire more workers, improve facilities, etc."],
//        // How to Buy a Stock
//        ["There is no requirement to be allowed to invest! You don’t have to have millions of dollars. Anyone who wants to invest can invest in any public company.", "The cost that brokerages charge for placing your trades is most frequently called a commision. Many brokerage houses have recently adopted a $0 commission for online equity trades.", "Investing is now easier than ever as investing can now be done online for no cost!"],
//        // Portfilio
//        ["No two portfolios should be the same. No two people have the exact same risk tolerance or investment time horizons. Therefore, you should make your portfolio to meet your risk tolerances and time horizons rather than modeling your portfolio with that of others.", "Unless you have an extremely high risk tolerance, you should not invest only in high growth stocks because they usually have a high amount of risk. Your portfolio should be a mix of high growth and low growth stocks depending on your individual risk tolerance.", "There are a little over 10,000 stocks listed on American exchanges. This makes it very unlikely that any two portfolios are exactly the same."]
//
//    ]
//
//
//
//    struct TopicData {
//        var name: String
//        var url: String
//    }
//
//
//    func getTopics () {
//        for index in 0...topicsArray.count - 1 {
//            if index <= questionsArrays.count - 1 {
//                topicArray.append(TopicData(topic: topicsArray[index], questions: questionsArrays[index], answerChoices: answerChoicesArrays[index], answers: answersArrays[index], explanations: explanationsArrays[index], completed: "Incomplete"))
//            } else {
//                topicArray.append(TopicData(topic: topicsArray[index], questions: ["","",""], answerChoices: [["","","",""],["","","",""],["","","",""]], answers: [0, 0, 0], explanations: ["","",""], completed: "Incomplete"))
//            }
//        }
//    }
//
//
//}
