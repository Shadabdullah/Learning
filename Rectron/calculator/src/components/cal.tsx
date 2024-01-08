import React, { useState } from "react";

const CalculatorUi: React.FC = () => {
  const [input, setInput] = useState<string>("");
  const [simplified, setSimplified] = useState<number | string>("Let's Start");

  function calculate(expression: string): number | string {
    try {
      return eval(expression);
    } catch (error) {
      console.log(error);
      return "Error";
    }
  }

  const handleInput = (value: string) => {
    setInput((prevInput) => prevInput + value); // Update input using the previous state
    const result = calculate(input + value); // Calculate using the updated input
    setSimplified(result);
  };

  const handleFunctionKey = (value: string) => {
    if (value === "DEL") {
      setInput("");
      setSimplified("Let's Start");
    }else if (value === 'CUT'){
      let newExpression = input.slice(0, -1)
      console.log(newExpression)
      setInput(newExpression)
      const result = calculate(input); // Calculate using the updated input
      setSimplified(result);

      
    }else{
      setInput(input+value)

    }
  };

  return (
    <div className="bg-black rounded-md w-full shadow-md p-4 max-w-xl">
      <div className="p-4 border-gray-50 m-t3 text-gray-500 text-2xl">
        {input}
      </div>
      <div className="p-4 border-gray-50 m-t3 text-white text-3xl items-end font-mono">
        {simplified || "Let's Start"}
      </div>

      <div id="Column-Container" className="flex p-5 justify-between space-x-4">
        <div
          id="Function-Container"
          className="grid grid-cols-2 gap-4 text-gray-700 font-mono"
        >
          <div className="flex flex-col gap-4">
            <button className="mb-4">sin</button>
            <button className="mb-4">cos</button>
            <button className="mb-4">tan</button>
            <button className="mb-4">¼</button>
            <button className="mb-4">!</button>
          </div>
          <div className="flex flex-col gap-4">
            <button className="mb-4">ln</button>
            <button className="mb-4">log</button>
            <button className="mb-4">e</button>
            <button className="mb-4">^</button>
            <button className="mb-4">√</button>
          </div>
        </div>

        <div className="text-white font-mono text-4xl grid grid-cols-3 gap-4">
          <button className="number-button" onClick={() => handleInput("1")}>
            1
          </button>
          <button className="number-button" onClick={() => handleInput("2")}>
            2
          </button>
          <button className="number-button" onClick={() => handleInput("3")}>
            3
          </button>
          <button className="number-button" onClick={() => handleInput("4")}>
            4
          </button>
          <button className="number-button" onClick={() => handleInput("5")}>
            5
          </button>
          <button className="number-button" onClick={() => handleInput("6")}>
            6
          </button>
          <button className="number-button" onClick={() => handleInput("7")}>
            7
          </button>
          <button className="number-button" onClick={() => handleInput("8")}>
            8
          </button>
          <button className="number-button" onClick={() => handleInput("9")}>
            9
          </button>
          <button
            className="number-button col-span-2"
            onClick={() => handleInput("0")}
          >
            0
          </button>
          <button className="number-button" onClick={() => handleInput(".")}>
            .
          </button>
          <button
            className="number-button"
            onClick={() => handleFunctionKey("CUT")}
          >
           X
          </button>
          <button
            className="number-button"
            onClick={() => handleFunctionKey("DEL")}
          >
            DEL
          </button>
        </div>

        <div
          id="Function-Container"
          className=" text-gray-600 font-mono grid grid-cols-2 gap-4"
        >
          <button
            className="function-button"
            onClick={() => handleFunctionKey("+")}
          >
            +
          </button>
          <button
            className="function-button"
            onClick={() => handleFunctionKey("-")}
          >
            -
          </button>
          <button
            className="function-button"
            onClick={() => handleFunctionKey("/")}
          >
            /
          </button>
          <button
            className="function-button"
            onClick={() => handleFunctionKey("*")}
          >
            *
          </button>
          <button
            className="function-button col-span-2"
            onClick={() => handleFunctionKey("=")}
          >
            =
          </button>
        </div>
      </div>
    </div>
  );
};

export default CalculatorUi;
